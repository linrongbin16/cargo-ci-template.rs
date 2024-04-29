use cargo_dependabot_test;
use crossterm::{
    execute,
    style::{Color, Print, ResetColor, SetBackgroundColor, SetForegroundColor},
};
use heed::types as heed_types;
use heed::{byteorder, Database, EnvOpenOptions};
use std::io::stdout;
use std::path::Path;

fn main() -> std::io::Result<()> {
    // using the macro
    execute!(
        stdout(),
        SetForegroundColor(Color::Blue),
        SetBackgroundColor(Color::Red),
        Print("Styled text here."),
        ResetColor
    )?;

    cargo_dependabot_test::hello();

    let env = unsafe { EnvOpenOptions::new().open(Path::new(".")).unwrap() };
    let mut wtxn = env.write_txn().unwrap();
    let db: Database<heed_types::Str, heed_types::U32<byteorder::NativeEndian>> =
        env.create_database(&mut wtxn, None).unwrap();
    db.put(&mut wtxn, "seven", &7).unwrap();
    wtxn.commit().unwrap();

    Ok(())
}

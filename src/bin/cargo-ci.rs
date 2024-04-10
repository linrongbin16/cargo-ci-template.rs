use cargo_dependabot_test;
use crossterm::{
    execute,
    style::{Color, Print, ResetColor, SetBackgroundColor, SetForegroundColor},
};
use std::io::stdout;

fn main() -> std::io::Result<()> {
    // using the macro
    execute!(
        stdout(),
        SetForegroundColor(Color::Blue),
        SetBackgroundColor(Color::Red),
        Print("Hello Cargo-CI."),
        ResetColor
    )?;

    cargo_dependabot_test::hello();

    Ok(())
}

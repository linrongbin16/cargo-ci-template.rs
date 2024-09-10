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
        Print("Hello."),
        ResetColor
    )?;

    // V8 engine
    let v8_platform = v8::new_default_platform(0, false).make_shared();
    v8::V8::initialize_platform(v8_platform);
    v8::V8::initialize();
    let v8_isolate = &mut v8::Isolate::new(Default::default());
    let v8_handle_scope = &mut v8::HandleScope::new(v8_isolate);
    let v8_context = v8::Context::new(v8_handle_scope, Default::default());
    let v8_context_scope = &mut v8::ContextScope::new(v8_handle_scope, v8_context);
    let js_code = v8::String::new(v8_context_scope, "'Hello' + ' World!'").unwrap();
    println!(
        "javascript code: {}",
        js_code.to_rust_string_lossy(v8_context_scope)
    );
    let v8_script = v8::Script::compile(v8_context_scope, js_code, None).unwrap();
    let js_result = v8_script.run(v8_context_scope).unwrap();
    let js_result = js_result.to_string(v8_context_scope).unwrap();
    println!(
        "javascript result: {}",
        js_result.to_rust_string_lossy(v8_context_scope)
    );

    Ok(())
}

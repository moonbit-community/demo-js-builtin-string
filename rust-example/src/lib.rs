use std::io::Write;

use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub fn print_and_concat(a: &str, b: &str) -> String {
    let c = a.to_owned() + b;
    std::io::stdout().write_all(c.as_bytes()).unwrap();
    c
}

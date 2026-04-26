///|
#external
type DOM

///|
#cfg(target="wasm-gc")
fn set_css(dom : DOM, key : String, value : String) -> Unit = "dom" "set_css"

///|
#cfg(not(target="wasm-gc"))
fn set_css(dom : DOM, key : String, value : String) -> Unit {
  ignore(dom)
  ignore(key)
  ignore(value)
}

///|
pub fn change_color(dom : DOM) -> Unit {
  set_css(dom, "color", "red")
}

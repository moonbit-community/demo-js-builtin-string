extern type DOM

fn set_css(dom : DOM, key : String, value : String) -> Unit = "dom" "set_css"

pub fn change_color(dom : DOM) -> Unit {
  set_css(dom, "color", "red")
}

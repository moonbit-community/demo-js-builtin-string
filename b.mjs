const { instance } = await WebAssembly.instantiateStreaming(fetch(new URL('./target/wasm-gc/release/build/demo-js-builtin-string.wasm', import.meta.url)), {
  dom: {
    set_css: (dom, key, value) => {
      dom.style[key] = value;
    }
  }
}, { builtins: ['js-string'], importedStringConstants: "moonbit:constant_strings" });

document.getElementById("hello").addEventListener("click", () => {
  instance.exports.change_color(document.getElementById("hello"));
});
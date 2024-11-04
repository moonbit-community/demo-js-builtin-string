const { instance } = await WebAssembly.instantiateStreaming(
  fetch(
    new URL(
      "./target/wasm-gc/release/build/palindrome/palindrome.wasm",
      import.meta.url
    )
  ),
  {
    console: {
      log: console.log,
    },
  },
  {
    builtins: ["js-string"],
    importedStringConstants: "moonbit:constant_strings",
  }
);

console.log(instance.exports.palindrome("hello"));
console.log(instance.exports.palindrome("ada"));

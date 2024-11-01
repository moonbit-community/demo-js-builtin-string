const { instance } = await WebAssembly.instantiateStreaming(fetch(new URL('./target/wasm-gc/release/build/hello.wasm', import.meta.url)), {}, { builtins: ['js-string'], importedStringConstants: "moonbit:constant_strings" });

console.log(instance.exports.palindrome("hello"));
console.log(instance.exports.palindrome("ada"));
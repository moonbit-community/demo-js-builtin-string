pub fn palindrome(s: String) -> String {
  let len = s.length();
  for i in 0..<len/2 {
    if s[i] != s[len-i-1] {
      return "false";
    }
  }
  return "true";
}
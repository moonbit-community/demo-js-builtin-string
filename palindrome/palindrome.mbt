///|
pub fn palindrome(s : String) -> String {
  let len = s.length()
  for i in 0..<(len / 2) {
    if s[i] != s[len - i - 1] {
      return "false"
    }
  }
  return "true"
}

///|
pub fn palin(p : String) -> Bool {
  loop p[:] {
    [head,  .. middle,  tail] =>
      if head == tail {
        continue middle
      } else {
        return false
      }
    [_] | [] => true
  }
}

void main() {
  var newFriends = ["장윤아", "모카"];
  var oldFriends = ["이준용", "오아리", for (var friend in newFriends) "❤ $friend"];

  print(oldFriends);
}

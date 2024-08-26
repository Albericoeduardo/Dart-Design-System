const tabNames = [
  {
    "index": "1",
    "tab": "message1"
  },
  {
    "index": "2",
    "tab": "message2"
  },
  {
    "index": "3",
    "tab": "message3"
  },
];

class TabViewModel {
  final Function(int)? onIndexChanged;
  final int initialIndex;

  TabViewModel._({required this.initialIndex, this.onIndexChanged});

  factory TabViewModel({required int initialIndex, Function(int)? onIndexChanged}) {
    return TabViewModel._(initialIndex: initialIndex, onIndexChanged: onIndexChanged);
  }
}

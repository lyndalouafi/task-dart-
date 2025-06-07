class Task {
  String?  title;
  String? description;
  DateTime? createdAt;
  bool? isDone;

  Task({this.title, this.description, this.createdAt, this.isDone});

  void markDone() {
    isDone = true ;
  }

  @override
  String toString() {
    return '[${isDone == true ? "✓" : " "}] $title - $description (  ${createdAt?.toString().split(".")[0]})';
  }

}
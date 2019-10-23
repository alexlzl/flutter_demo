typedef int Compare(Object a, Object b);

class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

int sort(Object a, Object b) {}

main() {
  SortedCollection collection = new SortedCollection(sort);
  /*
   // 我们只知道 compare 是一个 Function 类型，
  // 但是不知道具体是何种 Function 类型？
   */
  assert(collection.compare is Function);
  assert(collection.compare is Compare);
}

abstract class Repository {
  final String collection;

  Repository(this.collection);

  void test() {
    print('repository test(). collection: $collection');
  }
}

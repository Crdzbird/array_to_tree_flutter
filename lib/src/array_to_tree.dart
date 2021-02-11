class ArrayToTree {
  /// Returns [List<dynamic>] with the hierarchy created from a plain array.
  /// ex.
  /// ```dart
  /// buildTree([
  ///  {'id': 1, 'title': 'home', 'parent': null},
  ///  {'id': 2, 'title': 'about', 'parent': null},
  ///  {'id': 3, 'title': 'team', 'parent': 2},
  ///  {'id': 4, 'title': 'company', 'parent': 2},
  ///  {'id': 5, 'title': 'company', 'parent': 3}
  /// ]) => List<dMap<String, dynamic>> MultiLevel
  /// ```
  List<dynamic> buildTree(List<Map<String, dynamic>> list,
      {String idAttribute, String parentAttribute, String childrenAttribute}) {
    idAttribute = idAttribute ?? 'id';
    parentAttribute = parentAttribute ?? 'parent';
    childrenAttribute = childrenAttribute ?? 'children';
    var treeList = [];
    var lookup = {};
    list.forEach((obj) {
      lookup[obj[idAttribute]] = obj;
      obj[childrenAttribute] = [];
    });
    list.forEach((obj) {
      if (obj[parentAttribute] != null) {
        lookup[obj[parentAttribute]][childrenAttribute].add(obj);
      } else {
        treeList.add(obj);
      }
    });
    return treeList;
  }

  /// Similar to `buildTree` but can be called as a static function.
  static List<dynamic> buildStaticTree(List<Map<String, dynamic>> list,
      {String idAttribute, String parentAttribute, String childrenAttribute}) {
    idAttribute = idAttribute ?? 'id';
    parentAttribute = parentAttribute ?? 'parent';
    childrenAttribute = childrenAttribute ?? 'children';
    var treeList = [];
    var lookup = {};
    list.forEach((obj) {
      lookup[obj[idAttribute]] = obj;
      obj[childrenAttribute] = [];
    });
    list.forEach((obj) {
      if (obj[parentAttribute] != null) {
        lookup[obj[parentAttribute]][childrenAttribute].add(obj);
      } else {
        treeList.add(obj);
      }
    });
    return treeList;
  }
}

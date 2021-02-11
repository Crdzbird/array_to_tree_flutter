# ARRAY_TO_TREE
Create any Multi Level Tree on your flutter app based on a Plain Array.

### To use this please add in your **pubspec.yaml**


```yaml
dependencies:
  array_to_tree: ^0.1.0
```

To generate the hierarchy list, just call this.


```dart
var list = [
    {'id': 1, 'title': 'home', 'parent': null},
    {'id': 2, 'title': 'about', 'parent': null},
    {'id': 3, 'title': 'team', 'parent': 2},
    {'id': 4, 'title': 'company', 'parent': 2},
    {'id': 5, 'title': 'company', 'parent': 3}
  ];

buildTree() => _hierarchyTree = ArrayToTree.buildStaticTree(list);
```



DONE:
- [x] Conversion of Plain Array into a List with n-level construction.


### Special Thanks

- To the creator of [ARRAY_TO_TREE](https://github.com/alferov/array-to-tree)

### Contributing

All contributions are welcome!

If you like this project then please click on the :star2: it'll be appreciated or if you wanna add more epic stuff you can submit your pull request and it'll be gladly accepted :ok_man:

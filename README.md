# flutter-study
안드로이드스튜디오 단축키
auto indent: cmd + alt + L
new file: 없음.

트러블슈팅
https://velog.io/@qkrtnfks128/FlutterListdynamic-is-not-a-subtype-of-type-ListString

return Widget안하고
그냥 Widget하면 뷰 안그려짐
Container앞에 return 붙여야 한다.

```dart
ListView.builder(
  padding:const EdgeInsets.all(8),
  itemCount: todos.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
        height: 50,
        color: Colors.amber[colorCodes[index]],
        child: Center(child: Text('TODO: ${todos[index]}'))
    );
  }),
```


ListView내부에 TextField 만들때 TextController 계속 만드는 방식 별로이다.
Row하나에 StatefulWidget을 생성해서 추가하는 방식이 더 나음. 이유도 설명함.
https://stackoverflow.com/a/52235278

Materials
- https://medium.com/@yamen.abd98/clean-architecture-in-flutter-mvvm-bloc-dio-79b1615530e1
- https://github.com/guilherme-v/flutter-clean-architecture-example?tab=readme-ov-file
- https://github.com/VincentJouanne/flutter-bloc-clean-architecture
- https://www.youtube.com/watch?v=-u2qYWSp1yw
- https://www.youtube.com/playlist?list=PLB6lc7nQ1n4iYGE_khpXRdJkJEp9WOech
- https://www.youtube.com/watch?v=ELFORM9fmss
- https://velog.io/@gkssk925/Flutter-Clean-Architecture-DI-%EC%83%98%ED%94%8C%EC%95%B1-%EA%B0%9C%EB%B0%9C-%ED%9B%84%EA%B8%B0

https://dev.to/marwamejri/flutter-clean-architecture-1-an-overview-project-structure-4bhf

https://www.dbestech.com/tutorials/flutter-clean-architecture-tdd-bloc-course

https://www.dbestech.com/tutorials/flutter-bloc-clean-architecture-and-tdd

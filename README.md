# flutter_ui_study

----------------------------------------

### 실행 오류
- Run -> Edit Configurations... 로 이동 
- Additional run args: 에 --no-sound-null-safety 입력

----------------------------------------

###  노란 줄 제거
- analysis_options.yaml 에 rules: 부분에
- prefer_const_constructors: false
- prefer_const_literals_to_create_immutables: false
- prefer_const_constructors_in_immutables: false 3개 입력

<img width="267" alt="image" src="https://user-images.githubusercontent.com/39526249/170765648-5cd9f3b3-f440-484f-bf93-5c71bfc0c98e.png"><img width="384" alt="image" src="https://user-images.githubusercontent.com/39526249/170766029-df626aff-73c3-4a4c-9cf3-a0cbfc69f629.png">

----------------------------------------

###  이미지 추가
- Project에 assets 폴더 생성하고
- pubspec.yaml 에 assets: 부분에 - assets/ 추가

<img width="105" alt="image" src="https://user-images.githubusercontent.com/39526249/170766397-847afcb5-273a-4f45-b8bd-f16cfb80a32e.png">

----------------------------------------

###  debug 리본 제거
- debugShowCheckedModeBanner: false, 추가

<img width="300" alt="image" src="https://user-images.githubusercontent.com/39526249/170766914-57231be6-e2c2-461c-870a-497d98c2c8ee.png">





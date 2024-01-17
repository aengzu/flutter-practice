// 이미지 파일 경로를 가져와서 상수로 이름을 붙여주기 위한 클래스

class ImageAssets
{
  // 이미지를 바로 assets에서 링크로 가져오는 건 위험한 코드(하드코딩)
  // => 따라서 이미지를 static const 상수로 저장해둬서 이미지 사용시 해당 상수 호출하면 됨
  // 현재 로고는 더미 이미지 사용함 -> 나중에 나오면 해당 로고 파일로 이미지만 변경하면 됨.
  static const logo = 'assets/images/logo.png';

}
import router from '@ohos.router';

class tool {
  name : string
  image : Resource

  constructor(name : string, image :Resource) {
    this.name = name
    this.image = image
  }
}

@Entry
@Component
struct curtain {
  private Tool: Array<tool>=[
    new tool('灶台',$r('app.media.OIP_A'))
  ]
  build(){
    Column(){

      Text('厨房')
        .fontSize(40)
        .fontColor('#64cbbb')

      Text('灶台')
        .fontSize(20)

      Image($r('app.media.OIP_A'))
        .width(230)

      Button('打开')
        .height(30)
        .width(75)

      Button('关闭')
        .height(30)
        .width(75)

    }
    .width('100%')

  }


}
import router from '@ohos.router'
@Entry
@Component
struct Welcome{
  build(){
    Column(){
      Column(){
        Image($r('app.media.First'))
          .width(300)
        Text('智能家居')
          .fontSize(30)
          .fontColor('#333333')
      }
      .layoutWeight(1)
      .justifyContent(FlexAlign.Center)


      Row() {
        Text('智能家居')
          .fontSize(12)
          .fontColor('#333333')
          .opacity(0.8)

        Text('自由控制')
          .fontColor('#333333')
          .opacity(0.8)
          .fontSize(12)
          .border({style:BorderStyle.Solid,width:1,color:'#333333',radius:15})
          .padding({left:5,right:5})

        Text('人脸识别')
          .fontSize(12)
          .fontColor('#333333')
          .opacity(0.8)
      }.margin(30)

    }.height('100%')
    .width('100%')
  }
}
setTimeout(() =>{
  router.replaceUrl({ url: 'pages/Home' })
},1500)

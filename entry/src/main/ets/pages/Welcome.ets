import router from '@ohos.router'
@Entry
@Component
struct Welcome{
  build(){
    Column(){
      Column(){
        Image($r('app.media.R-C'))
          .width(230)
        Text('山衍')
          .fontSize(30)
          .fontColor('#333333')
      }
      .layoutWeight(1)
      .justifyContent(FlexAlign.Center)


      Row() {
        Text('山衍支持')
          .fontSize(12)
          .fontColor('#333333')
          .opacity(0.8)

        Text('IPv6')
          .fontColor('#333333')
          .opacity(0.8)
          .fontSize(12)
          .border({style:BorderStyle.Solid,width:1,color:'#333333',radius:15})
          .padding({left:5,right:5})

        Text('网络')
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

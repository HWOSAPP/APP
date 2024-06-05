import router from '@ohos.router';
class Furniture {
  name : string
  image : Resource

  constructor(name :string,image : Resource) {
    this.name = name
    this.image = image
  }
}
@Entry
@Component
export default struct Furniture_Import {
  private Furnitures: Array<Furniture> = [
    new Furniture('窗帘', $r('app.media.OIP_B')),
    new Furniture('风扇', $r('app.media.OIP_C')),
    new Furniture('添加家具', $r('app.media.add'))
  ]

  build() {
    Column() {
      //   Row() {
      //     Text('管理家居')
      //       .fontSize(40)
      //       .fontColor('#64cbbb')
      //   }.width('100%')
      //   .margin({bottom:20})
      //   .justifyContent(FlexAlign.Center)

      List({ space: 8 }) {
        ForEach(
          this.Furnitures,
          (furniture: Furniture) => {
            ListItem() {
              Column() {
                Button() {
                  Row({ space: 10 }) {
                    Image(furniture.image)
                      .width(100)
                    Column({ space: 4 }) {
                      Text(furniture.name)
                        .fontSize(25)
                        .fontWeight(FontWeight.Bold)
                    }
                    .width('60%')
                    .height('100%')
                    .alignItems(HorizontalAlign.Center)
                    .justifyContent(FlexAlign.Center)

                  }
                  .width('100%')
                  .backgroundColor('#cde3ff')
                  .borderRadius(20)
                  .height(120)
                  .padding(10)
                  .margin(10)
                }.backgroundColor('#EFEFEF')
                .type(ButtonType.Normal)
                .onClick(() => {
                  console.info('Succeeded in clicking the 窗帘 button.')
                  router.pushUrl({ url: 'pages/curtain' }).then(() => {
                    console.info('Succeeded in jumping to the 窗帘 page.')
                  }).catch((err) => {
                    console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
                  })
                })
              }
            }

          }
        )
      }


      // Row(){
      //   Button('返回')
      // }.padding(220)
      // .onClick(() => {
      //   console.info(`Succeeded in clicking the 'Back' button.`)
      //   try {
      //
      //     router.back()
      //     console.info('Succeeded in returning to the first page.')
      //   } catch (err) {
      //     console.error(`Failed to return to the first page.Code is ${err.code}, message is ${err.message}`)
      //   }
      // })
      //   }
      //   .width('100%')
      //   .height('100%')
      //   .backgroundColor('#EFEFEF')
      //   .padding(20)
      //
    }
  }
}
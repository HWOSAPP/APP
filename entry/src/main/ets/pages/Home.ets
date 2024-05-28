import router from '@ohos.router';
@Entry
@Component
struct Home {
  @State number : number = 1
  @State password:string =''
  private swiperController: SwiperController = new SwiperController()
  build() {
      Column({space:50}) {
        Row() {
          Text('智能家居APP')
            .fontSize(40)
            .fontColor('#64cbbb')
        }.height(50)
        .justifyContent(FlexAlign.Center)

        Row() {
          Swiper(this.swiperController) {
            Image($r('app.media.Home_A'))
              .width(230)
            Image($r('app.media.Home_B'))
              .width(230)
            Image($r('app.media.Home_C'))
              .width(230)
          }
          .loop(true)
          .autoPlay(true)
          .interval(3000)
        }

        Row() {
          Text('账号')
            .fontSize(20)

          TextInput()
            .width(230)
            .height(35)
            .backgroundColor('#64cbbb')
            .type(InputType.Number)
            .onChange((numbers : string) => {
              this.number = Number(numbers)
            })
        }.justifyContent(FlexAlign.SpaceEvenly)
        .width('100%')


        Row() {
          Text('密码')
            .fontSize(20)

          TextInput()
            .width(230)
            .height(35)
            .backgroundColor('#64cbbb')
            .type(InputType.Password)
            .onChange((password : string) => {
              this.password = password
            })
        }.width('100%')
        .justifyContent(FlexAlign.SpaceEvenly)

        Row() {
          Button('注册')
            .height(30)
            .width(75)
            .type(ButtonType.Capsule)


          Button('登录')
            .height(30)
            .width(75)
            .type(ButtonType.Capsule)
            .onClick(() => {
              if(this.number==123&&this.password=='aaa'){
                console.info('Succeeded in clicking the 登录 button.')
                router.pushUrl({ url: 'pages/Page1' }).then(() => {
                  console.info('Succeeded in jumping to the 登录 page.')
                }).catch((err) => {
                  console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
                })
              }
            })
        }.justifyContent(FlexAlign.SpaceEvenly)
        .width('100%')
        .margin(70)
      }
      .width('100%')

  }
}
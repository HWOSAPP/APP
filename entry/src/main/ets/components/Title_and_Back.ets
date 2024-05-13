import router from '@ohos.router';
@Component
export struct Title {
  private title: ResourceStr

  build() {
    Column() {
      Row() {
        Text(this.title)
          .fontSize(40)
          .fontColor('#64cbbb')

        Button('返回')
          .onClick(() => {
            console.info(`Succeeded in clicking the 'Back' button.`)
            try {

              router.back()
              console.info('Succeeded in returning to the first page.')
            } catch (err) {
              console.error(`Failed to return to the first page.Code is ${err.code}, message is ${err.message}`)
            }
          })
      }.width('100%')
      .justifyContent(FlexAlign.Center)

    }

  }
}
@Entry
@Component
struct Index {
  @State message: string = 'CNMD'
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            this.message = 'SB'
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
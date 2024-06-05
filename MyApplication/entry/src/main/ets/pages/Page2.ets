import Furniture from './furniture'
@Entry
@Component
struct  Page2 {
  @State message: string = 'Hello World'

  @Builder TabBarBuilder(Title: ResourceStr , image: ResourceStr , index: Number){
    Column({space:5}){
      Image(image)
        .width(22)
      Text(Title)
        .fontSize(14)
    }
  }

  build(){
    Tabs({barPosition: BarPosition.End}){
      TabContent(){
        Furniture()
      }
      .tabBar(this.TabBarBuilder('家具',$r('app.media.Manual'), 0))

      TabContent(){
        Text('智能管理')
      }
      .tabBar(this.TabBarBuilder('智能',$r('app.media.Smart'), 1))

      TabContent(){
        Text('我的账户')
      }
      .tabBar(this.TabBarBuilder('账户',$r('app.media.Myself'), 2))
    }
    .width('100%')
    .height('100%')
  }
}
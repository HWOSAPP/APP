import Furniture_Import from '../components/Furniture_Import'
import SearchHeader from '../components/SearchHeader'
@Component
export default struct Furniture {
  build() {
    Column(){
      //头部搜索栏
      SearchHeader()
      //家具管理
      Furniture_Import()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('FFFFF')
  }
}
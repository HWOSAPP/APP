@Component
export default struct SearchHeader {
  build() {
    Row(){
      Search({placeholder:'搜索家具信息'})
        .textFont({size:18})
    }
  }
}
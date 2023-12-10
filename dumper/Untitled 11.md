<%*
let canvasPath = "Dashboard.canvas"
let dailyFolder = "Daily/"
let dailyFormat = "yyyy-MM-DD"

let today = tp.date.now(dailyFormat)
let file = await app.vault.getAbstractFileByPath(canvasPath)
  
if (file != null) {
  let content = await app.vault.read(file)
  if (content != "") {
    let data = JSON.parse(content)
    let nodes = data.nodes

    let node = nodes.find(n => {
      if (n.file != undefined) {
        return n.file.startsWith(dailyFolder)
      } else return false
    })

    let todayFilePath = dailyFolder + today + ".md"

    if (node != undefined) {
      if (node.file != todayFilePath) {
        node.file = todayFilePath
        let newContent = JSON.stringify(data)
        await app.vault.modifyBinary(file, newContent)
      }
    }      
  }
}
%>
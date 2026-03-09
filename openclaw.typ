
#import "template/on-site-install.typ": install-poster

#install-poster(
  layer-1-color: rgb("#f45d68"),
  layer-2-color: rgb("#ffd6d8"),
  layer-4-color: rgb("#f45d6888"),
  install-target: [
    #set text(font: "Agency FB", weight: "bold", size: 0.8em)
    #box[#scale(x: 120%, y: 120%, reflow: true)[#text(fill: white)[OPEN]#text(fill: rgb("#ff000d"))[CLAW]]]
  ],
  location: [南山],
  location-level: [区],
  issues: [依赖、配置、隐私泄露、静默支付],
  clan: [AI 助理原神学派],
  benchmark: [第三方],
  benchmark-task: [Token], 
  task: [卸载], 
  price: [0],
  look-at: [账单余额], 
  during-text: [装了 Mac mini 四个月, 还没进化成贾维斯], 
  service-mark: [🦞],
  icon: [
    #set text(size: 2em)
    🦞
  ],
)


#import "template/on-site-install.typ": install-poster

#let times = (n, content) => {
  let i = 0; while i < n {
    content; i = i + 1
  }
}

#install-poster(
  layer-1-color: rgb("#2c2e33"),
  layer-4-color: rgb("#2c2e3388"),
  install-target: [
    #times(4, math.square)
  ],
  location: [#times(2, math.square)],
  location-level: [#times(1, math.square)],
  issues: [#times(2, math.square)、#times(2, math.square)、#times(4, math.square)、#times(4, math.square)],
  clan: [
    #times(9, math.square)
  ],
  benchmark: [#times(2, math.square)],
  benchmark-task: [#times(2, math.square)],
  task: [#math.square#math.square],
  price: [0],
  look-at: [#times(4, math.square)],
  during-text: [#math.square#math.square#math.square#math.square#math.square#math.square#math.square#math.square#math.square#math.square#math.square#math.square#math.square#math.square#math.square],
  service-mark: [#math.square],
  icon: [
    #set text(size: 2em)
    #math.square
  ],
)

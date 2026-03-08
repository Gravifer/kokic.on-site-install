
#let typst-theme-color = rgb("#239dad")

#let install-poster = (
  layer-1-color: typst-theme-color,
  layer-2-color: auto,
  layer-3-color: auto,
  layer-4-color: auto,
  install-target: [Typst],
  location: [德国],
  location-level: [国],
  issues: [警告、错误、环境变量、字体缺失],
  clan: [排版系统原神],
  benchmark: [texlive],
  service-mark: [#text(size: 1em, font: "Libertinus Serif")[t]],
  icon: [#text(size: 3.5em, font: "Libertinus Serif")[t]]
) => {
  set page(margin: 0em)

  if layer-2-color == auto {
    layer-2-color = layer-1-color.lighten(90%)
  }

  if layer-3-color == auto {
    layer-3-color = layer-1-color.lighten(60%)
  }

  if layer-4-color == auto {
    layer-4-color = layer-1-color.darken(10%)
  }

  set text(font: ("Noto Serif CJK SC"), weight: "bold")

  block(fill: layer-1-color, below: 0em, width: 100%, height: 20%)[
    #set text(size: 5em, fill: layer-3-color)
    #align(horizon)[
      #box(width: 5%, height: 100%)[]
      #box(width: 65%, height: 100%)[
        #install-target #location \
        上门安装
      ]
      #box(width: 25%, height: 100%)[
        #icon
      ]
    ]
  ]

  block(fill: layer-2-color, below: 0em, width: 100%, height: 25%, inset: 2em)[
    #block(below: 3em)[
      #set text(size: 2.5em)
      全男娘工程师团队 | #location #install-target 上门安装
    ]
    #block()[
      #set text(size: 2em)
      兄弟们谁懂啊 $dots.c dots.c$ 看着命令行代码头都大了, \
      #install-target 工具链装了电脑半年, 环境还是个半成品不全, \
      #issues $dots.c dots.c$ 九敏! \
      我们来了 #text(fill: rgb("#ffbb57"))[✨]
    ]
  ]

  let title = (content) => {
    let text-box = [
      #set text(size: 1.5em)
      #content
    ]

    v(0.5em)
    context {
      let box-width = measure(text-box).width
      box(radius: 4pt, clip: true, width: box-width, height: 1em, outset: (x: 4pt), fill: layer-4-color)
      v(-3.3em)
      text-box
    }
  }

  set list(marker: $bullet$)

  block(
    fill: layer-3-color,
    below: 0em,
    inset: 2em,
    width: 100%,
    height: 55%,
  )[
    #set text(1.5em)

    #title[
      #text(fill: rgb("#fc3263"))[#emoji.heart]
      全男娘工程师上门服务
    ]

    - 对每台机子都充满爱意, 即使配置不高也会细心呵护
    - 全程娓娓道来, 超温柔讲解, 有问必答

    #title[
      #service-mark
      服务内容
    ]

    #box[
      #set list(marker: service-mark)
      - 系统基础环境优化与降定调优
      - #install-target 精细化安装与常用 AI 配置
      - 原生开发环境, 高性能模式与 AGENTS 优化
      - 命令行报错排查与降维打击式修复
      - 深度稳定性测试与功能全通验证
      - “#clan”专属新手保姆级教学
      #v(-0.5em)
      #align(right)[#set text(0.9em); (温柔包教会) #h(3.5em)]
    ]

    #title[
      #text(fill: rgb("#ffffff"))[💻]
      支持设备
    ]

    #box[
      #set list(marker: text(fill: rgb("#ffffff"))[#emoji.checkmark])
      - Windows / Mac / Linux 全系列
    ]

    #place(
      dx: 64%,
      dy: -70%,
    )[#box(
        width: 40%,
        height: 85%,
      )[
        #title[
          #text(fill: rgb("#ffd67c"))[#emoji.money]
          价格 #h(5em)
        ]
        #v(-1em)
        #text(fill: layer-4-color, size: 2em)[500] / 次 #text(size: 0.6em)[(一次性收费, 甚至比你的 #benchmark 配置还便宜)]

        不加价, 不隐形消费 \
        安装完成可现场温柔验收

        #title[
          #text(fill: rgb("#ce3b61"))[📌]
          服务范围
        ]

        #location;全#location-level;皆可上门 \
        提前预约即可喵 \~

        #v(1em)

        #block[
          #set text(size: 0.9em)
          如果你:
          - 不想自己折腾, 想被温柔对代
          - 不想被粗鲁的技术大叔“教育”
        ]
      ]
    ]
  ]
}

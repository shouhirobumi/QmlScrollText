import QtQuick 2.0
import QtQuick.Controls 1.2
//import QtQuick.Controls.Styles 1.2

Rectangle {
    id:root

    width: 930
    height: 300
    color:"#000000"

    property string newscontent:    //  _va_news.getContent()
      "刘宝玲表示，未来雄安新区，将在房地产方面进行创新，租售并举。他说，“雄安新区的房子是用来住的，不是用来炒的，要满足各种不同消费群体的需求，不留炒作空间，实行租售并举的住房政策。”
　　刘宝玲表示，雄安新区要全面落实“房子是用来住的，不是用来炒的”这一理念，绝不搞土地财政，不走房地产主导的城市发展老路。新区将创新工作路径，为到雄安新区工作的各方面人才创造良好的工作生活环境，特别是要成为年轻人创业的宝地。
　　刘宝玲举例说：现在设想，要为外来创业、就业者提供租赁住房，租赁超过十年也可以买，一定期限内不能卖。若卖，优先政府以略高于同期银行本息的价格回购.
    刘宝玲说，雄安新区用人制度将有重大创新，通过体制机制创新，集聚全国乃至全世界的人才和智慧到雄安新区，并让人才引得来、留得住、发展得好。
　　雄安新区将按照“精减、统一、高效”的原则，实行“大部门制、扁平化、聘任制”，构建精干的管理机构，减少行政层级，实行“小政府、大服务”，提高行政效率。不唯身份，科学设岗，因岗选人，互为AB角，严格绩效管理，严格依法依纪管理，使人尽其才、才尽其用，创新创造活力迸发。
　　刘宝玲表示，新区将不拘一格选人才。公务员、高校毕业生、社会自然人、工人、农民，只要是新区需要的人才，都欢迎。一律实行聘任制。签订聘任合同，因岗选人、依岗定薪，按劳取酬、优绩优酬，工资标准参照北京，甚至高于北京，特殊人才、特殊待遇。"

    clip: true

    Rectangle {
        id: scroll_back
        anchors.right: flick.right
        height: flick.height
        width: 2
        visible: flick.movingVertically ? true : false
         color: "#666666"
    }

    Rectangle {
        id: scrollbar_vertical
        anchors.right: flick.right
        //当前可视区域的位置.为百分比值,0-1之间
        y: flick.visibleArea.yPosition * flick.height
        width: 2
        //当前可视区域的高度比例,为百分比值,0-1之间
        height: flick.visibleArea.heightRatio * flick.height
        color: "#000000"

        visible: flick.movingVertically ? true : false

        Rectangle {
            id: bg_back
            width: 2
            height: parent.height
            color: "#ff5100"
        }
    }


    Flickable {
         id: flick
         width: 920
         height: 300
         contentWidth: testroot.paintedWidth
         contentHeight: testroot.paintedHeight
         clip: true
         flickableDirection  : Flickable.VerticalFlick      //     只允许竖直操作，不允许水平操作
        // boundsBehavior : Flickable.StopAtBounds    //禁止挥出或拖出边界。在这里可以阻止x轴的运动

        Text{
            id: testroot
            width: flick.width
            height: flick.height
            font.pixelSize: 28
            wrapMode:Text.WrapAnywhere
            color:"#ffffff"
            text:   newscontent
        }
    }

}

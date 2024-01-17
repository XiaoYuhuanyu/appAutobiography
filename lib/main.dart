import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    screen1(),
    screen2(),
    screen3(),
    screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    if (currentIndex==0) player.play(AssetSource("1.mp3"));
    return MaterialApp(
      title: '我的自傳',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                       useMaterial3: true,),
      home: Scaffold(
        appBar: AppBar(title: Text('我的自傳'),),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18,
          unselectedFontSize: 14,
          iconSize: 30,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: currentIndex==0? Image.asset('images/f1.jpg',width:40,height:40): Image.asset('images/f1.jpg',width:20,height:20), label:'自我介紹',),
            BottomNavigationBarItem(icon: Icon(Icons.school), label:'學習歷程',),
            BottomNavigationBarItem(icon: Icon(Icons.schedule_outlined), label:'學習計畫',),
            BottomNavigationBarItem(icon: Icon(Icons.engineering), label:'專業方向',),
          ],
          onTap: (index) {
            setState(() {
              previousIndex=currentIndex;
              currentIndex=index;
              if (index==0) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('1.mp3'));
              }
              if (index==1) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('2.mp3'));
              }
              if (index==2) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('3.mp3'));
              }
              if (index==3) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('4.mp3'));
              }
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='        我出生在一個很平凡但很美滿的小家庭，我的成長環境雖然平凡，卻激發了我對生活的熱情和對成功的渴望。'
      '我出生於宜蘭，在一個注重家庭價值觀的環境中度過了童年。我的父母以辛勤工作維持家計，他們的堅持和奮鬥精神一直是我前進的動力。'
      '進入大學後，我決定攻讀資訊工程系，這是我對科技充滿熱愛的體現。在大學的學習中，我深入學習了各種程式語言、系統設計等相關知識。'
      '我喜歡迎接挑戰，探索不同的領域，並持續學習最新的科技動態。在高中時期，我就讀的是資訊系，這段經歷強化了我的計算機科學基礎，'
      '並鞏固了我對資訊領域的興趣。我參與了一些校內的程式競賽和項目開發，這些經驗豐富了我的實際應用技能，並培養了我與團隊協作的能力。'
      '目前我正就讀於高雄科技大學。雖然我尚未有實習的經驗，但我對資訊科技領域的熱情和我的學習成果使我準備好踏上實習旅程。'
      '我正在積極尋找機會，期望能夠將理論知識轉化為實際能力，並將我的熱情和才華貢獻給實習機構。未來，我渴望能在資訊科技行業中發揮所學，'
      '不斷挑戰自己，追求技術的創新。我相信，這段在平凡家庭長大、努力學習的歷程將成為我堅定追求成功的力量。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('Who am I', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10,),
          //放一張照片
          Container(
            color: Colors.redAccent,
            child:Image.asset('images/f1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/f1.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/f1.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(child: Text('在大一的時候，我主要專注於建立堅實的資訊工程基礎。'
          '我修習了計算機科學、數學、和程式設計的基礎課程，這為我後續的學習打下了堅實的基礎。'
          '同時，我參與了學校的程式設計競賽，這讓我更好地理解和應用所學的知識。\n\n'
          '進入大二，我開始選擇更專業的課程，包括資料結構、演算法和資料庫管理等。我也參與了學校的實習計畫，'
          '這讓我有機會將理論知識應用到實際工作中。同時，我加入了資訊工程相關的社團，'
          '與同學一起參與一些小型專案，這加強了我的合作和溝通能力。\n\n'
          '大三是我專業知識的深化階段。我選修了更高級的資訊工程課程，包括分散式系統、網路安全和軟體工程等。'
          '同時，我決定參加夏季實習，這為我提供了實際的工作經驗，讓我更了解產業的運作方式。'
          '在這一年，我也開始思考自己未來的職業方向，開始學習相關的技能，如前端開發和大數據分析。'),
      ),
    );
  }
}
class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大一時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 200,
              child: ListView(
                children: [
                  Text('1. 建立堅實的基礎'),
                  Text('2. 參與校內活動'),
                  Text('3. 語言技能提升'),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大二時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 200,
              child: ListView(
                children: [
                  Text('1. 深入專業知識'),
                  Text('2. 考取證照'),
                  Text('3. 學習新技術'),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大三時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 200,
              child: ListView(
                children: [
                  Text('1. 尋找實習機會'),
                  Text('2. 專案實作'),
                  Text('3. 技能精進'),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大四時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 200,
              child: ListView(
                children: [
                  Text('1. 職業規劃'),
                  Text('2. 求職準備'),
                  Text('3. 自我提升'),
                ],
              ),
            ),
          ],
        ),
      ],),
    );
  }
}
class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(child: Text('在大學就讀資訊工程系的過程中，我深深融入了這個快速發展的領域，並熱衷於學習和探索技術的最新動向。'
          '我的專業學習包括廣泛的程式語言、系統設計、資料庫管理等方面，這些都使我在資訊科技領域取得了堅實的基礎。透過大學課程，'
          '我獲得了豐富的理論知識，並積極參與了一系列的實際項目。這不僅擴展了我的應用技能，還培養了我在團隊中合作和溝通的能力。'
          '在高中的資訊系學習中，我參與了多個程式競賽和開發項目，這些經驗深刻地影響了我對資訊科技的熱情。雖然我目前尚未有實習的經驗，'
          '但我相信透過實際應用我的知識，我將能夠更深入地理解資訊工程的實際挑戰，並提升我的技術能力。我正積極地尋找實習機會，'
          '期望在真實的工作環境中學到更多寶貴的經驗。'),
      ),
    );
  }
}
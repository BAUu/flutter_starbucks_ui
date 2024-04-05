import 'package:flutter/material.dart';

class StarbucksBottomNavigationBar extends StatelessWidget {
  const StarbucksBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0, // 현재 선택된 아이템의 인덱스
      onTap: (int index) {
        // 각 아이템을 탭했을 때의 동작 정의
        switch (index) {
          case 0:
          // 홈 페이지로 이동
          // 여기에 네비게이션 동작을 추가하세요
            break;
          case 1:
          // 결제 페이지로 이동
          // 여기에 네비게이션 동작을 추가하세요
            break;
          case 2:
          // 주문 페이지로 이동
          // 여기에 네비게이션 동작을 추가하세요
            break;
          case 3:
          // 상점 페이지로 이동
          // 여기에 네비게이션 동작을 추가하세요
            break;
          case 4:
          // 기타 페이지로 이동
          // 여기에 네비게이션 동작을 추가하세요
            break;
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.grey),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.payment, color: Colors.grey),
          label: 'Pay',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: Colors.grey),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop, color: Colors.grey),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz, color: Colors.grey,),
          label: 'Other',
        ),
      ],
    );
  }
}

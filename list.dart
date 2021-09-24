void main() {
  List myList = [
    [33, 65],
    [
      55,
      [
        45,
        [76, 98],
        98
      ],
      88
    ],
    44,
    57,
    [
      729,
      094,
      [
        45,
        67,
        [
          76,
          98,
          [46, 98],
          87,
          8
        ],
        72
      ],
      73
    ]
  ];

  // print(myList);
  myList.forEach((element) {
    if (element is List) {
      element.forEach((list) {
        if (list is List) {
          list.forEach((value) {
            if (value is List) {
              value.forEach((data) {
                if (data is List) {
                  data.forEach((eles) {
                    if (eles is List) {
                    } else {
                      print(eles);
                    }
                  });
                } else {
                  print(data);
                }
              });
            } else {
              print(value);
            }
          });
        } else {
          print(list);
        }
      });
    } else {
      print(element);
    }
  });
}

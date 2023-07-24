
void main() {
//   1
  myFunc1(list){
    for (var i = 0; i<list.length; i++){
      if(list[i]<5){
        print(list[i]);
      }
    }
  }
  
//   var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   myFunc1(a);
  
myFunc2(List<int> a, List<int>b){
  List<int> list1 = a.toSet().toList();
  List<int> list2 = b.toSet().toList();
  List<int> newList = [];
   for (int i = 0; i < list1.length; i++) {
    if(list2.contains(list1[i])){
      newList.add(list1[i]);
    }
  }
  print(newList);
}
  
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
//   myFunc2(a, b);

  isApalindrome(a){
    for(var i = 0; i<a.length; i++){
      int checkIndex = a.length - 1 - i;
      if(a[i] == a[checkIndex]){
       continue; 
      }
      else{
        return false;
      }
      
    }
    return true;
  }
  
  
//   String a = "uu5";
//   print(isApalindrome(a));
  
  makeNewList(List<dynamic> list){
    List<dynamic> newList= [];
    newList.add(list.first);
    newList.add(list.last);
    return newList;
  }
  
//   List<dynamic> a = [5, 10, 15, 20, 25];
//   print(makeNewList(a));
  
  printBackWards(String word){
    String tempList = word.split(' ').reversed.toList().join(' ');
    print(tempList);
  }
//   printBackWards('My name is Michele');
  
  removeDuplicates(list){
    Set<dynamic> newSet= list.toSet();
    List<dynamic> finalList = newSet.toList();
    return finalList;
  }
  
//    List<int> a = [1, 1];
//   print(removeDuplicates(a));

extraMonths(Map<String, dynamic> data){
    List<String> months = [];
    
    for(var entry in data.entries){
      months.add(entry.key);
    }
    return months;
  }
  
  numberOfBirthDays(Map<String, dynamic> data){
//     List<String> months = [];
    
    for(var entry in data.entries){
      var res = entry.key +":"+ entry.value.toString();
      print(res);
    }
  }
  
  showHighestAndLowest(Map<String, dynamic> data){
    dynamic lowestValue = double.infinity;
    var lowestMonth = "";
    var highestMonth = "";
    var highestValue = 0;
    data.forEach((key, value){
      if(value >= highestValue){
        highestMonth = key;
        highestValue = value;
      }
      if(value < lowestValue){
        lowestMonth = key;
        lowestValue = value;
      }
    });
    print("Lowest $lowestMonth");
    print("Highest $highestMonth");
  }
  
  Map<String, dynamic>  data = {
    "May": 3,
    "May": 5,
    "November": 2,
    "December": 1,
    "December": 4,
    "December": 2
  };
  
//   print(extraMonths(data));
//   print(numberOfBirthDays(data));
//   showHighestAndLowest(data);

}
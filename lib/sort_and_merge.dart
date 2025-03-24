void main() {
  List<int> array1 = [7, 8, 11];
  List<int> array2 = [4, 1, 2];
  List<int> result = merge(array1, array2);
  List<int> sortedResult = sort(result);

  print(sortedResult);
}

List<int> merge(List<int> array1, List<int> array2) {
  List<int> mergedList = [];
  for (int i = 0; i < array1.length; i++) {
    mergedList.add(array1[i]);
  }

  for (int i = 0; i < array2.length; i++) {
    mergedList.add(array2[i]);
  }
  return mergedList;
}

List<int> sort(List<int> mergedArray) {
  //Insertion Sort
  for (int i = 1; i < mergedArray.length; i++) {
    int key = mergedArray[i];
    int j = i - 1;
    while (j >= 0 && mergedArray[j] > key) {
      mergedArray[j + 1] = mergedArray[j];
      j--;
    }
    mergedArray[j + 1] = key;
  }
  return mergedArray;
}

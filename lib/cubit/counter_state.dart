class CounterState{
  int count = 0;
  bool isLoading;
  bool isError;

  CounterState({required this.count, this.isLoading = false, this.isError = false});

}
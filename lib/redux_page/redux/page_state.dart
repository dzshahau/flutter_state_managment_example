abstract class CounterState{

}

class IncrementedState extends CounterState{
    final int value;

  IncrementedState(this.value);
}
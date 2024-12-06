sealed class Result {
  Result();
}

class Success<T> extends Result {
  T data;
  Success(this.data);
}

class Error extends Result {
  String error;
  Error(this.error);
}

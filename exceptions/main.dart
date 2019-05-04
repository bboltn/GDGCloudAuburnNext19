class RedAlertException implements Exception {
  String cause;
  RedAlertException(this.cause);
}

class YellowAlertException implements Exception {
  String cause;
  YellowAlertException(this.cause);
}

void main() {
  print('--Catch all--');
  
  try {
  	throw RedAlertException('shields up!');
  } catch (e, s) {
    // print error
    print('Catch Error: $e');
    
    // print stack
    print('\nStack: $s');
  } finally {
    print('\nFinally: enemy retreated');
  }
  
  print('\n\n--Catch with error type--');
  
  try {
  	throw YellowAlertException('anomaly detected');
  } on YellowAlertException catch (e) {
    print('YellowAlertException: $e');
  } catch (e) {
    print ('Catch: Unknown error!');
  } finally {
    print('Finally: anomaly analyzed');
  }
}
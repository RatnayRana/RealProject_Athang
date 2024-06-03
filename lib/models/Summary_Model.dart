class SummaryModel {
  num expenses = 1200;
  num income = 0;
  num openingBalance = -1200;
  String maxExpense = 'Dinner at resturant';
  num totalTransactionThisMonth = 1;
  SummaryModel({
    this.expenses = 0,
    this.income = 0,
    this.openingBalance = 0,
    this.maxExpense = '0',
    this.totalTransactionThisMonth = 0,
  });
}

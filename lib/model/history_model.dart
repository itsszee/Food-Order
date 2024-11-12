class HistoryModel {
  final String tanggal;
  final String harga;

  HistoryModel({ required this.tanggal, required this.harga});

}

final List<HistoryModel> itemHistory = [
  HistoryModel(
    tanggal: '05 November 2024', 
    harga: 'Rp. 100.500'
  ),
  HistoryModel(
    tanggal: '04 November 2024', 
    harga: 'Rp.90.600'
  ),
];

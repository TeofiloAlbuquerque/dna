import 'package:dna/dna.dart';

void main() {
  try {
    var dna = DNASequence.random(13);
    var reverseDna = dna.reverseSequence;
    var complementDna = dna.complementSequence;
    var nucleotide = 'C';
    var count = dna.countNucleotideOccurrences(nucleotide);
    print('Sequência aleatória: ${dna.sequence}');
    print('Sequência invertida: $reverseDna');
    print('Complemento da sequência do Dna: $complementDna');
    print('O nucleotideo $nucleotide aparece $count');
  } catch (e) {
    print('Erro: $e');
  }
}

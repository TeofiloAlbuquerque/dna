import 'package:dna/dna.dart';

void main() {
  try {
    var dna = DNASequence.random(13);
    var reverseDna = dna.reverseSequence;
    var complementDna = dna.complementSequence;
    var nucleotide = 'T';
    var count = dna.countNucleotideOccurrences(nucleotide);
    print('Sequência aleatória: ${dna.sequence}');
    print('Sequência invertida: $reverseDna');
    print('Complemento da sequência do Dna: $complementDna');
    print('Nsumero de ocorrencia do nucleotideo $nucleotide: $count');
  } catch (e) {
    print('Erro: $e');
  }
}



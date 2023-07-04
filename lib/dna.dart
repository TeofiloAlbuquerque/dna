import 'dart:math';

class DNASequence {
  final String sequence;

  DNASequence(this.sequence) {
    if (!isValidSequence(sequence)) {
      throw Exception('Sequência de DNA inválida');
    }
  }

  factory DNASequence.random(int length) {
    if (length <= 0) {
      throw Exception('Sequência de tamanho inválido');
    }
    final randomDna = Random();
    final List<String> nucleotides = ['A', 'C', 'G', 'T'];
    String sequenceDnaRandom = '';

    for (int i = 0; i < length; i++) {
      final randomIndex = randomDna.nextInt(nucleotides.length);
      sequenceDnaRandom += nucleotides[randomIndex];
    }
    return DNASequence(sequenceDnaRandom);
  }

  static isValidSequence(String sequence) {
    return RegExp(r'^[ACGT]+$').hasMatch(sequence);
  }

  @override
  String toString() {
    return sequence;
  }

  DNASequence get reverseSequence {
    String reversedSequence = sequence.split('').reversed.join('');
    return DNASequence(reversedSequence);
  }

  DNASequence get complementSequence {
    String complement = '';
    for (var i = 0; i < sequence.length; i++) {
      var nucleotide = sequence[i];
      var complementNucleotide = '';

      switch (nucleotide) {
        case 'A':
          complementNucleotide = 'T';
          break;
        case 'T':
          complementNucleotide = 'A';
          break;
        case 'C':
          complementNucleotide = 'G';
          break;
        case 'G':
          complementNucleotide = 'C';
          break;
      }
      complement += complementNucleotide;
    }
    return DNASequence(complement);
  }

  int countNucleotideOccurrences(String nucleotide) {
    if (nucleotide != 'A' &&
        nucleotide != 'C' &&
        nucleotide != 'G' &&
        nucleotide != 'T') {
      throw Exception('Nucleotideo inválido');
    }
    int count = 0;
    for (var i = 0; i < sequence.length; i++) {
      if (sequence[i] == nucleotide) {
        count++;
      }
    }
    return count;
  }
}

#!/usr/bin/perl
#ÖZGÜR KAN ->15011702
open (DNA, '<','Database.txt') or die "Can't open database";
@record = <DNA> ;
$size = @record;
print "number of DNA in the database: $size \n";
for (my $i=0; $i < $size; $i++) {
   print "@record[$i]";
}  
close(DNA) or die "Can't open database";
print ("\n\n");
for (my $k=0; $k < $size; $k++) {
	$dna_no=$k+1;
	print ("\n $dna_no.DNA=====>			");
	for ($i = 0 ; $i < length(@record[$k]); $i++ )  { 
		@character_array[$i] = substr( @record[$k], $i, 1);
		print " @character_array[$i]";
	}
	$eleman_sayisi=$i-1;
	$indis=$i-2;
	$i=0;
	#print("eleman sayısı= $eleman_sayisi  indis=$indis");
	
	print (" $dna_no.Counterpart=====>	        ");
	for ($i = 0 ; $i < $eleman_sayisi; $i++ )  { 
			if(@character_array[$i] eq 'A') { 
				@translation[$i]="T";
				@rna[$i]="U";
				}
    
			elsif(@character_array[$i] eq 'T') { 
				@translation[$i]="A";
				@rna[$i]="A";
			}
        
			elsif(@character_array[$i] eq 'C') { 
				@translation[$i]="G";
				@rna[$i]="G";
				
			}
    
			elsif(@character_array[$i] eq 'G') { 
				@translation[$i]="C";
				@rna[$i]="C";
			}		
		print " @translation[$i]";
	}
	
	print ("\n $dna_no.RNA=====>			");
	for ($i = 0 ; $i < $eleman_sayisi; $i++ )  {
		print " @rna[$i]";
	}
	$j=0;
	for ($i = 0 ; $i < $eleman_sayisi-3; $i=$i+3 )  {
			@triplets[$j]=@rna[$i].@rna[$i+1].@rna[$i+2];
			$j=$j+1;				
	}
	#print("$eleman_sayisi $i $j \n");
	if($eleman_sayisi-$i==3){
		@triplets[$j]=@rna[$i].@rna[$i+1].@rna[$i+2];
		$j=$j+1;
	}
	elsif($eleman_sayisi-$i==1){
		@triplets[$j]=@rna[$i];
		$j=$j+1;
	}
	elsif($eleman_sayisi-$i==2){
		@triplets[$j]=@rna[$i].@rna[$i+1];
		$j=$j+1;
	}
	print("\n $dna_no. mRNA==>	 	     ");
	for ($i = 0 ; $i <$j; $i++)  {
		print "    @triplets[$i]";
	}
	print("\n");
		my(%genetic_code_word_table) = (
		'UUU' => 'PHE',    
		'UUC' => 'PHE',
		'UUA' => 'LEU',
		'UUG' => 'LEU',
		'CUU' => 'LEU',
		'CUC' => 'LEU',
		'CUA' => 'LEU',
		'CUG' => 'LEU',
		'UCU' => 'SER',
		'UCC' => 'SER',
		'UCA' => 'SER',
		'UCG' => 'SER',
		'AGU' => 'SER',
		'AGC' => 'SER',
		'UAU' => 'TYR',
		'UAC' => 'TYR',
		'UAA' => 'STOP',
		'UAG' => 'STOP',
		'UGA' => 'STOP',
		'UGU' => 'CYS',
		'UGC' => 'CYS',
		'UGG' => 'TRP',
		'CCU' => 'PRO',
		'CCC' => 'PRO',
		'CCA' => 'PRO',
		'CCG' => 'PRO',
		'CAU' => 'HIS',
		'CAC' => 'HIS',
		'CAA' => 'GLN',
		'CAG' => 'GLN',
		'CGU' => 'ARG',
		'CGC' => 'ARG',
		'CGA' => 'ARG',
		'CGG' => 'ARG',
		'AGA' => 'ARG',
		'AGG' => 'ARG',
		'AUU' => 'ILE',
		'AUC' => 'ILE',
		'AUA' => 'ILE',
		'AUG' => 'MET',
		'ACU' => 'THR',
		'ACC' => 'THR',
		'ACA' => 'THR',
		'ACG' => 'THR',
		'AAU' => 'ASN',
		'AAC' => 'ASN',
		'AAA' => 'LYS',
		'AAG' => 'LYS',
		'GUU' => 'VAL',
		'GUC' => 'VAL',
		'GUA' => 'VAL',
		'GUG' => 'VAL',
		'GCU' => 'ALA',
		'GCC' => 'ALA',
		'GCA' => 'ALA',
		'GCG' => 'ALA',
		'GAU' => 'ASP',
		'GAC' => 'ASP', 
		'GAA' => 'GLU',
		'GAG' => 'GLU',
		'GGU' => 'GLY',
		'GGC' => 'GLY',
		'GGA' => 'GLY',
		'GGG' => 'GLY',  
	);
	my(%genetic_code_letter_table) = (
		'UUU' => 'F',    
		'UUC' => 'F',
		'UUA' => 'L',
		'UUG' => 'L',
		'CUU' => 'L',
		'CUC' => 'L',
		'CUA' => 'L',
		'CUG' => 'L',
		'UCU' => 'S',
		'UCC' => 'S',
		'UCA' => 'S',
		'UCG' => 'S',
		'AGU' => 'S',
		'AGC' => 'S',
		'UAU' => 'Y',
		'UAC' => 'Y',
		'UAA' => '.',
		'UAG' => '.',
		'UGA' => '.',
		'UGU' => 'C',
		'UGC' => 'C',
		'UGG' => 'W',
		'CCU' => 'P',
		'CCC' => 'P',
		'CCA' => 'P',
		'CCG' => 'P',
		'CAU' => 'H',
		'CAC' => 'H',
		'CAA' => 'Q',
		'CAG' => 'Q',
		'CGU' => 'R',
		'CGC' => 'R',
		'CGA' => 'R',
		'CGG' => 'R',
		'AGA' => 'R',
		'AGG' => 'R',
		'AUU' => 'I',
		'AUC' => 'I',
		'AUA' => 'I',
		'AUG' => 'M',
		'ACU' => 'T',
		'ACC' => 'T',
		'ACA' => 'T',
		'ACG' => 'T',
		'AAU' => 'N',
		'AAC' => 'N',
		'AAA' => 'K',
		'AAG' => 'K',
		'GUU' => 'V',
		'GUC' => 'V',
		'GUA' => 'V',
		'GUG' => 'V',
		'GCU' => 'A',
		'GCC' => 'A',
		'GCA' => 'A',
		'GCG' => 'A',
		'GAU' => 'D',
		'GAC' => 'D', 
		'GAA' => 'E',
		'GAG' => 'E',
		'GGU' => 'G',
		'GGC' => 'G',
		'GGA' => 'G',
		'GGG' => 'G',  
	);
	print(" $dna_no. PROTEIN==>	 	         ");
	for ($i = 0 ; $i <$j; $i++) {     
	    if( exists ($genetic_code_word_table{@triplets[$i]}) ) {
		@result_word[$i] = $genetic_code_word_table{@triplets[$i]};
		print "$genetic_code_word_table{@triplets[$i]}    ";
	    }
	}
	print("\n $dna_no. sequence of amino acids==>   ");
	for ($i = 0 ; $i <$j; $i++) {     
	    if( exists ($genetic_code_letter_table{@triplets[$i]}) ) {
		@result_letter[$i] = $genetic_code_letter_table{@triplets[$i]};
		print "$genetic_code_letter_table{@triplets[$i]}";
	    }
	}
	print("\n");
	if($k==0){
		open(RESULT, "+>result.txt") or die "Couldn't open file result.txt, $!";
			print RESULT @result_letter;
			print RESULT ("\n");
		close(RESULT) || die "Couldn't close file properly";
	}else{
		open(RESULT, ">>result.txt") or die "Couldn't open file result.txt, $!";
			print RESULT @result_letter;
			print RESULT ("\n");
		close(RESULT) || die "Couldn't close file properly";
	}
	
}  
print("\n");
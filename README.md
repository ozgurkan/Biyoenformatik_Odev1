# DNA-translation-to-amino-acit-sequence-
HW 1: Write a Perl program that implements DNA translation to amino acit sequence 

Reminder: 
 
Example 1.  Transcribe the following DNA to RNA, then use the genetic code to translate it to a sequence of amino acids. 
 
 TCATAATACGTTTTGTATTCGCCAGCGCTTCGGTGT 
 
 Answer 1.  To transcribe the DNA, first substitute each DNA for it’s counterpart (i.e., G for C, C for G, T for A and A for T):    
 
 TCATAATACGTTTTGTATTCGCCAGCGCTTCGGTGT 
 
 AGTATTATGCAAAACATAAGCGGTCGCGAAGCCACA  
 
 Next, remember that the Thymine (T) bases become a Uracil (U). Hence our sequence becomes: 
 
 AGUAUUAUGCAAAACAUAAGCGGUCGCGAAGCCACA 
 
 Using the genetic code is also easy – just split the RNA sequence into triplets: : 
 
 AGU  AUU  AUG  CAA  AAC  AUA  AGC  GGU  CGC  GAA  GCC  ACA
 
 then look each triplet (codon) up in the genetic code table. So AGU becomes Serine, which we can write as Ser, or  just S. AUU becomes Isoleucine (Ile), which we write as I. Carrying on in this way, we get:  
 
 SIMQNISGREAT 
 
 
 
 
 
 
 

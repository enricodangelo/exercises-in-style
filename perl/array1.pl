#!/usr/bin/perl

$array[0] = "zero";
$array[1] = "uno";
$array[3] = "tre";
$size = $#array;

print "array[0] = $array[0]\n";
print "array[1] = $array[1]\n";
print "array[2] = $array[2]\n";
print "array[3] = $array[3]\n";
print "size = $size\n";
print "array[size] = $array[$size]\n";
print "array = $array\n";

$list = (1..100);
@list2 = qw(primo secondo terzo quarto);

print "list = $list\n";
print "list2 = @list2\n";

($uno, $due, $tre) = ("uno", "due", "tre");

print "uno = $uno\n";
print "due = $due\n";
print "tre = $tre\n";

($uno, $due, $tre, $quattro) = @list2;

print "uno = $uno\n";
print "due = $due\n";
print "tre = $tre\n";
print "quattro = $quattro\n";

@lista_copia = @list2;

print "lista_copia = @lista_copia\n";
print "list2 = @list2\n";

$lista_copia[0] = "cacca";

print "lista_copia = @lista_copia\n";
print "list2 = @list2\n";

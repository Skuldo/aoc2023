$callib = "1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet"

$callib_nums = $callib | % {$_ -replace '[a-zA-Z]',''}

$callib_lines = $callib_nums.Split([Environment]::NewLine)


$sum = 0

$callib_proc = $callib_lines | % {
	$first = $_.substring(0,1)

	$last = $_.ToCharArray();
	[array]::Reverse($last);
	$last = -join($last);
	$last = $last.substring(0,1)

	$sum = $sum + [int]($first + "" + $last)
}

$sum

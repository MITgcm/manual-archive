BEGIN{}
/<STRONG>/,/<\/STRONG>/{print $0}
END{}

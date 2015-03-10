# NAME

Memento::TimeTravel - A time traveler for URLS

# SYNOPSIS

    #In your fix file
    marc_map(856u,myurl)
    time_travel(myurl,2013)

    unless exists(myurl.mementos)
          log("eek this url is not in a webarchive!", ERROR)
    end

    # or directly


    use Memento::TimeTravel;

    my $traveler = Memento::TimeTravel->new();

    my $mementos = $traveler->find_mementos('http://www.ugent.be/',2013);

# AUTHOR

Patrick Hochstenbach, `<patrick.hochstenbach at ugent.be>`

# LICENSE

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

package Cellucidate::KappaImportJob;

use base Cellucidate::Base;

sub route   { '/kappa_import_jobs'; }
sub element { 'kappa-import-job';   }


# Cellucidate::KappaImportJob->result($kappa_import_job_id);
# This is always going to be a book.
sub result {
  my $self = shift;
  my $id = shift;
  my $format = shift;

  $self->rest('GET', $self->route . "/$id/result", $format)->processResponse; 
}

1;

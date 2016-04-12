class r10kprofile::r10kdn {

class { 'r10k':
    remote                 =>'git@10.10.10.52:r10k-controlrepo.git',
    include_prerun_command => true,
  }

  # Webhook configuration
  include r10k::mcollective
  # include r10k::webhook

  # class { 'r10k::webhook::config':
  # protected => false,
  # notify    => Service['webhook'],
  # }

}

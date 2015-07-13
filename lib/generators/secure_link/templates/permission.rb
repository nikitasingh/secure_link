class Permission

  #You will need to add the permission based on following format -
  # [
  #    ['__URL__','__ROLE__']
  #  ]
  # Example -
  # [
  #  ['/login', 'normal'],
  #  ['/users/new', 'admin']
  # ]
  # TODO:-
  #     * Allowing multiple user to be added for single url
  #     * Use of paths or url instead of exact URL
  #

  def self.get_permissions
    [
      ['','']
    ]
  end
end


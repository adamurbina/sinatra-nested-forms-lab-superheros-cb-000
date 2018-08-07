class Team
    attr_accessor :name, :motto, :members

    def initialize(params)
        @name = params[:name]
        @motto = params[:motto]
        @members = []
    end

    def add_member(member)
        @members << member
    end
end

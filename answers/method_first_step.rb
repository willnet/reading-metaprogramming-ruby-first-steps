# 問題の解説
# define_methodとdefine_singleton_methodの素振り用の問題です
# define_singleton_methodは3章にはまだ出てきていませんが、これを知らないと3章の問題を解くのが難しくなるので覚えておいてください
#
# F2クラスの問題は、メソッドを実行したら新しいメソッドができる、ということを実感してもらうための問題です

class F1
  define_method :hello do
    'hello'
  end

  define_singleton_method :world do
    'world'
  end

  def method_missing(*args)
    'NoMethodError'
  end

  def respond_to_missing?(*args)
    true
  end
end

class F2
  def add_hi
    def hi
    end
  end
end

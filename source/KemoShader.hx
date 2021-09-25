package;

import flixel.system.FlxAssets.FlxShader;

//Custom shader by kemo bebepopo
class KemoShader extends FlxShader
{
	@:glFragmentSource('
		#pragma header

		void main()
		{
			vec4 col = texture2D(bitmap, openfl_TextureCoordv.st);
			vec4 bigBalls = texture2D(bitmap, openfl_TextureCoordv);
			bigBalls.r = 0;
			bigBalls.g = col.g;
			bigBalls.b = 0;

			gl_FragColor = bigBalls;
		}')
	public function new()
	{
		super();
	}
}
